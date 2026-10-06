.class Li7/i$e;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/i;->D(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lmiuix/appcompat/app/AlertDialog;

.field final synthetic d:Li7/i;


# direct methods
.method constructor <init>(Li7/i;Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Li7/i$e;->d:Li7/i;

    iput-object p2, p0, Li7/i$e;->a:Landroid/content/Context;

    iput-object p3, p0, Li7/i$e;->b:Ljava/lang/String;

    iput-object p4, p0, Li7/i$e;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Li7/i$e;->a:Landroid/content/Context;

    iget-object v0, p0, Li7/i$e;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Li7/i;->j(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Li7/i$e;->c:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
