namespace MVCAud1.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Clients",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(),
                        address = c.String(),
                        age = c.Int(nullable: false),
                        movieCard = c.String(),
                        telephone = c.String(),
                        Movie_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Movies", t => t.Movie_id)
                .Index(t => t.Movie_id);
            
            CreateTable(
                "dbo.Movies",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(),
                        rating = c.Single(nullable: false),
                        downloadUrl = c.String(),
                        ImgUrl = c.String(),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Clients", "Movie_id", "dbo.Movies");
            DropIndex("dbo.Clients", new[] { "Movie_id" });
            DropTable("dbo.Movies");
            DropTable("dbo.Clients");
        }
    }
}
