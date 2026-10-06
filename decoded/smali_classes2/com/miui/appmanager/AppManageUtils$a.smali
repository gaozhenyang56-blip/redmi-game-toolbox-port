.class Lcom/miui/appmanager/AppManageUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/AppManageUtils;->t0(Landroid/content/Context;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManageUtils$a;->a:Z

    iput-object p2, p0, Lcom/miui/appmanager/AppManageUtils$a;->b:Landroid/content/Context;

    iput p3, p0, Lcom/miui/appmanager/AppManageUtils$a;->c:I

    iput-object p4, p0, Lcom/miui/appmanager/AppManageUtils$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManageUtils$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManageUtils$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v2

    const-wide/16 v3, 0x4000

    iget v6, p0, Lcom/miui/appmanager/AppManageUtils$a;->c:I

    new-array v7, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/appmanager/AppManageUtils$a;->d:Ljava/lang/String;

    aput-object v1, v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JII[Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManageUtils$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AppManageUtils$a;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/appmanager/AppManageUtils$a;->d:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AppManageUtils$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
