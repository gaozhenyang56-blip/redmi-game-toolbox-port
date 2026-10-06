.class public Lr3/a;
.super Lr3/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr3/z;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method t(Landroid/widget/ImageView;Lcom/miui/autotask/bean/n;)V
    .locals 0

    check-cast p2, Lcom/miui/autotask/bean/b;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/b;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method w(Landroid/widget/TextView;Lcom/miui/autotask/bean/n;)V
    .locals 0

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
