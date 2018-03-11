﻿using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer.Commands
{
    public class GetCustomerByPersonLastNameCommand : ObjectCommand
    {
        private readonly SqlParameter _returnValue;
        private readonly SqlParameter _personLastName;

        public GetCustomerByPersonLastNameCommand(ObjectConnection objectConnection)
            : this(objectConnection.CreateCommand())
        {
        }

        public GetCustomerByPersonLastNameCommand(SqlCommand sqlCommand)
            : base(sqlCommand)
        {
            Command.CommandText = "[dbo].[spGettblCustomerByPersonLastName]";
            Command.CommandType = CommandType.StoredProcedure;

            _returnValue = CreateParameter("RETURN_VALUE", SqlDbType.Int, ParameterDirection.ReturnValue);
            _personLastName = CreateParameter("personLastName", SqlDbType.VarChar, ParameterDirection.Input);

            SqlParameterCollection sqlParameterCollection = sqlCommand.Parameters;
            sqlParameterCollection.Add(_returnValue);
            sqlParameterCollection.Add(_personLastName);
        }

        public int ReturnValue
        {
            get { return (int)_returnValue.Value; }
            set { _returnValue.Value = value; }
        }

        public string PersonLastName
        {
            get { return (string)_personLastName.Value; }
            set { _personLastName.Value = value; }
        }
    }
}
