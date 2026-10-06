.class Lcom/miui/idprovider/IdProvider$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/idprovider/IdProvider$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/miui/idprovider/IdProvider$b;


# direct methods
.method constructor <init>(Lcom/miui/idprovider/IdProvider$b;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/IdProvider$b$a;->b:Lcom/miui/idprovider/IdProvider$b;

    iput-object p2, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/miui/idprovider/IdProvider$b$a;->b:Lcom/miui/idprovider/IdProvider$b;

    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/idprovider/IdProvider$b;->a(Lcom/miui/idprovider/IdProvider$b;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->b:Lcom/miui/idprovider/IdProvider$b;

    iget-object v1, v1, Lcom/miui/idprovider/IdProvider$b;->a:Lcom/miui/idprovider/IdProvider;

    invoke-static {v1}, Lcom/miui/idprovider/IdProvider;->e(Lcom/miui/idprovider/IdProvider;)Ls9/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v11, "AAID"

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "package_name = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-virtual {v1, v11, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "IdProvider"

    const-string v2, "Package removed query exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.extra.UID"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lx4/b2;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/idprovider/IdProvider$b$a;->b:Lcom/miui/idprovider/IdProvider$b;

    iget-object v2, v2, Lcom/miui/idprovider/IdProvider$b;->a:Lcom/miui/idprovider/IdProvider;

    invoke-static {v2}, Lcom/miui/idprovider/IdProvider;->f(Lcom/miui/idprovider/IdProvider;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-static {v1}, Lx4/z1;->b(I)I

    move-result v3

    const/16 v4, 0x2735

    invoke-static {v2, v0, v3, v4}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/miui/idprovider/IdProvider$b$a;->b:Lcom/miui/idprovider/IdProvider$b;

    iget-object v3, v3, Lcom/miui/idprovider/IdProvider$b;->a:Lcom/miui/idprovider/IdProvider;

    invoke-static {v3}, Lcom/miui/idprovider/IdProvider;->f(Lcom/miui/idprovider/IdProvider;)Landroid/app/AppOpsManager;

    move-result-object v3

    invoke-static {v3, v0, v1, v4, v2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_2
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/idprovider/IdProvider$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    invoke-static {v0, v1}, Lv9/d;->e(Ljava/lang/String;I)V

    :cond_4
    :goto_3
    return-void
.end method
