.class Lcom/miui/common/base/ui/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/base/ui/b;->i()V
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

    iput-object p1, p0, Lcom/miui/common/base/ui/b$b;->a:Lcom/miui/common/base/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/common/base/ui/b$b;->a:Lcom/miui/common/base/ui/b;

    invoke-static {p1}, Lcom/miui/common/base/ui/b;->b(Lcom/miui/common/base/ui/b;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
