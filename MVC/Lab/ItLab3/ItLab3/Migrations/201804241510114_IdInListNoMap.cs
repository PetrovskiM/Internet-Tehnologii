namespace ItLab3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class IdInListNoMap : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Friends", "IdInList");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Friends", "IdInList", c => c.Int(nullable: false));
        }
    }
}
