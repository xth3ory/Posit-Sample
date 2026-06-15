import streamlit as st
import numpy as np
import pandas as pd

chart_data_1 = pd.read_csv('inbound.csv')
chart_data_2 = pd.read_csv('outbound.csv')

chart_data_1['month'] = pd.to_datetime(chart_data_1['month'])
chart_data_2['month'] = pd.to_datetime(chart_data_2['month'])

st.line_chart(chart_data_1, x='month', y='Inbound_Transaction_Count')
st.line_chart(chart_data_2, x='month', y='Outbound_Transaction_Count')