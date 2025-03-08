import os
import logging
from sqlalchemy import text, Engine, Connection


# Configure logger
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)
logger = logging.getLogger(__name__)


def execute_sql_script(connection: Connection, sql_file_path: str) -> None:
    """
    Execute SQL statements from a file.

    Args:
        connection: SQLAlchemy Connection object
        sql_file_path: Path to the SQL script file

    Raises:
        FileNotFoundError: If the SQL file doesn't exist
        Exception: For any SQL execution errors
    """
    try:
        if os.path.exists(sql_file_path):
            logger.info(f"Executing SQL script: {sql_file_path}")
            with open(sql_file_path, "r") as file:
                sql_script = file.read()
                # Split script by semicolons for multiple statements
                statements = sql_script.split(";")
                for statement in statements:
                    if statement.strip():
                        try:
                            connection.execute(text(statement))
                        except Exception as e:
                            logger.error(f"Error executing SQL statement: {e}")
                            logger.error(f"Problematic statement: {statement.strip()}")
                            raise
        else:
            logger.warning(f"SQL script {sql_file_path} not found.")
            raise FileNotFoundError(f"SQL script file not found: {sql_file_path}")
    except FileNotFoundError as e:
        logger.error(f"File not found: {e}")
        raise
    except Exception as e:
        logger.error(f"Error in executing SQL script: {e}")
        raise


def create_database(engine: Engine) -> None:
    """
    Create database schema and populate with initial data.

    Args:
        engine: SQLAlchemy engine instance

    Raises:
        Exception: If any error occurs during database creation
    """
    try:
        logger.info("Starting database creation")
        with engine.begin() as connection:
            try:
                execute_sql_script(connection, "schema.sql")
                execute_sql_script(connection, "data.sql")
                logger.info("Database created successfully")
            except Exception as e:
                logger.error(f"Database creation failed: {e}")
                connection.rollback()
                raise
    except Exception as e:
        logger.error(f"Error in creating database: {e}")
        raise
