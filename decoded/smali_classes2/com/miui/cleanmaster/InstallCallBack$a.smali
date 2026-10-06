.class Lcom/miui/cleanmaster/InstallCallBack$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cleanmaster/InstallCallBack;->packageInstalled(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/cleanmaster/InstallCallBack;


# direct methods
.method constructor <init>(Lcom/miui/cleanmaster/InstallCallBack;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/InstallCallBack$a;->b:Lcom/miui/cleanmaster/InstallCallBack;

    iput p2, p0, Lcom/miui/cleanmaster/InstallCallBack$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/cleanmaster/InstallCallBack$a;->b:Lcom/miui/cleanmaster/InstallCallBack;

    invoke-static {v0}, Lcom/miui/cleanmaster/InstallCallBack;->v1(Lcom/miui/cleanmaster/InstallCallBack;)Lc4/n;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "InstallCallBack"

    const-string v1, "mCallBack is Null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/cleanmaster/InstallCallBack$a;->b:Lcom/miui/cleanmaster/InstallCallBack;

    invoke-static {v0}, Lcom/miui/cleanmaster/InstallCallBack;->v1(Lcom/miui/cleanmaster/InstallCallBack;)Lc4/n;

    move-result-object v0

    iget v1, p0, Lcom/miui/cleanmaster/InstallCallBack$a;->a:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2, v1}, Lc4/n;->a(ZI)V

    return-void
.end method
