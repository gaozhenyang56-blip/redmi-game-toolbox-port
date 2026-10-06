.class Lcom/miui/applicationlock/widget/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/applicationlock/widget/MiuiNumericInputView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/q;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/q;->k(Lcom/miui/applicationlock/widget/q;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v2}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v2}, Lcom/miui/applicationlock/widget/q;->j(Lcom/miui/applicationlock/widget/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080dc0

    goto :goto_0

    :cond_0
    const v2, 0x7f080dc1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/widget/q;->l(Lcom/miui/applicationlock/widget/q;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->m(Lcom/miui/applicationlock/widget/q;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->k(Lcom/miui/applicationlock/widget/q;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->k(Lcom/miui/applicationlock/widget/q;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202a4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/miui/applicationlock/widget/q$a;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {v4}, Lcom/miui/applicationlock/widget/q;->i(Lcom/miui/applicationlock/widget/q;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
