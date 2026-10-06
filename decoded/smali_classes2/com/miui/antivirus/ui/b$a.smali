.class Lcom/miui/antivirus/ui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/b;->c(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/antivirus/ui/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/b;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/b$a;->c:Lcom/miui/antivirus/ui/b;

    iput-boolean p2, p0, Lcom/miui/antivirus/ui/b$a;->a:Z

    iput-object p3, p0, Lcom/miui/antivirus/ui/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/b$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lo2/h;->O(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/b$a;->c:Lcom/miui/antivirus/ui/b;

    invoke-static {v0}, Lcom/miui/antivirus/ui/b;->a(Lcom/miui/antivirus/ui/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/miui/antivirus/ui/b$a;->b:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v3, v1}, Lmc/c;->e(Landroid/app/ActivityManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
