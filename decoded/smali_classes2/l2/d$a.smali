.class Ll2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/d;->A(Ll2/d$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/d$d;

.field final synthetic b:Ll2/d;


# direct methods
.method constructor <init>(Ll2/d;Ll2/d$d;)V
    .locals 0

    iput-object p1, p0, Ll2/d$a;->b:Ll2/d;

    iput-object p2, p0, Ll2/d$a;->a:Ll2/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object v0, v0, Ll2/d$d;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ll2/d$a;->a:Ll2/d$d;

    iget-object p1, p1, Ll2/d$d;->b:Landroid/widget/TextView;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
