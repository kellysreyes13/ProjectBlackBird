﻿using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer.Commands
{
    public class DeleteInventoryItemByInventoryItemIdCommand : ObjectCommand
    {
        private readonly SqlParameter _returnValue;
        private readonly SqlParameter _inventoryItemId;

        public DeleteInventoryItemByInventoryItemIdCommand(ObjectConnection objectConnection)
            : this(objectConnection.CreateCommand())
        {
        }

        public DeleteInventoryItemByInventoryItemIdCommand(SqlCommand sqlCommand)
            : base(sqlCommand)
        {
            Command.CommandText = "[dbo].[spDeletetblInventoryItemByInventoryItemId]";
            Command.CommandType = CommandType.StoredProcedure;

            _returnValue = CreateParameter("RETURN_VALUE", SqlDbType.Int, ParameterDirection.ReturnValue);
            _inventoryItemId = CreateParameter("inventoryItemId", SqlDbType.UniqueIdentifier, ParameterDirection.Input);

            SqlParameterCollection sqlParameterCollection = sqlCommand.Parameters;
            sqlParameterCollection.Add(_returnValue);
            sqlParameterCollection.Add(_inventoryItemId);
        }

        public int ReturnValue
        {
            get { return (int)_returnValue.Value; }
            set { _returnValue.Value = value; }
        }

        public Guid InventoryItemId
        {
            get { return (Guid)_inventoryItemId.Value; }
            set { _inventoryItemId.Value = value; }
        }
    }
}
