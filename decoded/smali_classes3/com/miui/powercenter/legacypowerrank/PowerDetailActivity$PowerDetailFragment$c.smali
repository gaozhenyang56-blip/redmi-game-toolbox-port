.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    :try_start_0
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->q0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I

    move-result p1

    invoke-static {p1}, Lme/m;->b(I)I

    move-result p1

    const-string p2, "android.os.ServiceManager"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Landroid/os/Binder;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v4, v5

    invoke-static {p2, v0, v1, v3, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    const-string v0, "android.content.pm.IPackageManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v0, v1, v3, v4, v2}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {p2, v1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v5

    const/4 v9, 0x0

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    move-object v6, p2

    move v8, v0

    invoke-static/range {v6 .. v11}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->u0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Lo9/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    const/4 v2, 0x4

    invoke-static {v1, p2, v0, p1, v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->v0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$c;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v1, p2, v0, p1, v5}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->v0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PowerDetailActivity"

    const-string v0, "uninstallApp: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
