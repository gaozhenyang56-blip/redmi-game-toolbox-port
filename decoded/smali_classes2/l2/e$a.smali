.class Ll2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll2/e;->x(Ll2/g$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/g$a;

.field final synthetic b:Ll2/e;


# direct methods
.method constructor <init>(Ll2/e;Ll2/g$a;)V
    .locals 0

    iput-object p1, p0, Ll2/e$a;->b:Ll2/e;

    iput-object p2, p0, Ll2/e$a;->a:Ll2/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1
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

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll2/e$a;->a:Ll2/g$a;

    iget-object v0, v0, Ll2/g$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ll2/e$a;->a:Ll2/g$a;

    iget-object p1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ll2/e$a;->a:Ll2/g$a;

    iget-object p1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
