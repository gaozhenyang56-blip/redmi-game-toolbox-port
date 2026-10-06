.class Lrd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrd/d;


# direct methods
.method constructor <init>(Lrd/d;)V
    .locals 0

    iput-object p1, p0, Lrd/d$a;->a:Lrd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "save_idea"

    if-nez v0, :cond_1

    iget-object v0, p0, Lrd/d$a;->a:Lrd/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lrd/d;->d(Lrd/d;Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-static {v1}, Lhd/a;->O0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v2, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lrd/d$a;->a:Lrd/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lrd/d;->e(Lrd/d;Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    return-void
.end method
