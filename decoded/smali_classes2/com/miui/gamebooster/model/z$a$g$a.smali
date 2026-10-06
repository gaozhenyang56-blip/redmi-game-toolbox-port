.class Lcom/miui/gamebooster/model/z$a$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/model/z$a$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/model/z$a$g;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/model/z$a$g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/z$a$g$a;->a:Lcom/miui/gamebooster/model/z$a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g$a;->a:Lcom/miui/gamebooster/model/z$a$g;

    iget-object v0, v0, Lcom/miui/gamebooster/model/z$a$g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/model/z$a$g$a;->a:Lcom/miui/gamebooster/model/z$a$g;

    iget-object v0, v0, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    invoke-static {v0}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/model/z$a$g$a;->a:Lcom/miui/gamebooster/model/z$a$g;

    iget-object v1, v1, Lcom/miui/gamebooster/model/z$a$g;->c:Lcom/miui/gamebooster/model/z$a;

    invoke-static {v1}, Lcom/miui/gamebooster/model/z$a;->c(Lcom/miui/gamebooster/model/z$a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b22

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
