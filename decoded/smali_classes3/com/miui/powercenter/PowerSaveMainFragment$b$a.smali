.class Lcom/miui/powercenter/PowerSaveMainFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSaveMainFragment$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/powercenter/PowerSaveMainFragment$b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;->b:Lcom/miui/powercenter/PowerSaveMainFragment$b;

    iput-boolean p2, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;->b:Lcom/miui/powercenter/PowerSaveMainFragment$b;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSaveMainFragment$b;->a(Lcom/miui/powercenter/PowerSaveMainFragment$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/powercenter/PowerSaveMainFragment;->b0(Lcom/miui/powercenter/PowerSaveMainFragment;)Lcom/miui/powercenter/batteryhistory/z;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;->a:Z

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/z;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/powercenter/PowerSaveMainFragment;->h:Ljava/lang/String;

    const-string v2, "initChargeFeature error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
