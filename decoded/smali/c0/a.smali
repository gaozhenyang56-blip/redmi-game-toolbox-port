.class public final Lc0/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lc0/k;

.field private final c:I


# direct methods
.method public constructor <init>(ILc0/k;I)V
    .locals 0
    .param p2    # Lc0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lc0/a;->a:I

    iput-object p2, p0, Lc0/a;->b:Lc0/k;

    iput p3, p0, Lc0/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lc0/a;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc0/a;->b:Lc0/k;

    iget v1, p0, Lc0/a;->c:I

    invoke-virtual {v0, v1, p1}, Lc0/k;->d0(ILandroid/os/Bundle;)Z

    return-void
.end method
