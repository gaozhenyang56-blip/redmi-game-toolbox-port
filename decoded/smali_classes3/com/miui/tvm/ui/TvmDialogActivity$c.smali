.class Lcom/miui/tvm/ui/TvmDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/tvm/ui/TvmDialogActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/tvm/ui/TvmDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/tvm/ui/TvmDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$c;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/tvm/TvmManager;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tvm.TvmDialogActivity"

    invoke-static {v1, v0}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/miui/tvm/TvmManager;->t(I)V

    :goto_0
    return-void
.end method
