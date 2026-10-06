.class Lcom/miui/common/base/ui/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/base/ui/b;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/base/ui/b;


# direct methods
.method constructor <init>(Lcom/miui/common/base/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-static {v0}, Lcom/miui/common/base/ui/b;->a(Lcom/miui/common/base/ui/b;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-static {v0}, Lcom/miui/common/base/ui/b;->a(Lcom/miui/common/base/ui/b;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-static {v0}, Lcom/miui/common/base/ui/b;->b(Lcom/miui/common/base/ui/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-static {v0}, Lcom/miui/common/base/ui/b;->b(Lcom/miui/common/base/ui/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/base/ui/b$a;->a:Lcom/miui/common/base/ui/b;

    invoke-static {v0}, Lcom/miui/common/base/ui/b;->a(Lcom/miui/common/base/ui/b;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
