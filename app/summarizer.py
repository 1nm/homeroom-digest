from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.runnables import RunnablePassthrough
from langchain_openai import ChatOpenAI


PROMPT_TEMPLATE = """
    Summarize the update from my daughter's homeroom teacher.
    List all the action items and information for the parents, group them by actionable and informational.
    Output in plain text without markdown formatting.
    ```
    {text}
    ```
"""

def summarize(text):
    prompt = ChatPromptTemplate.from_template(PROMPT_TEMPLATE)
    output_parser = StrOutputParser()
    model = ChatOpenAI(model="gpt-4o")
    chain = (
        {"text": RunnablePassthrough()} 
        | prompt
        | model
        | output_parser
    )

    response = chain.invoke(text)
    return response