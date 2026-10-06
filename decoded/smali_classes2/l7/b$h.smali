.class Ll7/b$h;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/b;->e(Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ll7/b$j;

.field final synthetic d:Lmiuix/appcompat/app/AlertDialog;

.field final synthetic e:Ll7/b;


# direct methods
.method constructor <init>(Ll7/b;Landroid/content/Context;Ljava/lang/String;Ll7/b$j;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Ll7/b$h;->e:Ll7/b;

    iput-object p2, p0, Ll7/b$h;->a:Landroid/content/Context;

    iput-object p3, p0, Ll7/b$h;->b:Ljava/lang/String;

    iput-object p4, p0, Ll7/b$h;->c:Ll7/b$j;

    iput-object p5, p0, Ll7/b$h;->d:Lmiuix/appcompat/app/AlertDialog;

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

    iget-object p1, p0, Ll7/b$h;->a:Landroid/content/Context;

    iget-object v0, p0, Ll7/b$h;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Ll7/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Ll7/b$h;->c:Ll7/b$j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll7/b$j;->onCancel()V

    :cond_0
    iget-object p1, p0, Ll7/b$h;->d:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Ll7/b$h;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

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
