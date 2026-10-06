.class public Lcom/miui/permcenter/autostart/a$d;
.super Lcom/miui/permcenter/autostart/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/permcenter/autostart/a$b;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b04e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a$d;->a:Landroid/widget/TextView;

    return-void
.end method

.method private b(ZI)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f100053

    goto :goto_0

    :cond_0
    const p1, 0x7f100051

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lob/a;)V
    .locals 2

    instance-of v0, p1, Lob/d;

    if-eqz v0, :cond_0

    check-cast p1, Lob/d;

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$d;->a:Landroid/widget/TextView;

    iget-boolean v1, p1, Lob/d;->a:Z

    iget p1, p1, Lob/d;->b:I

    invoke-direct {p0, v1, p1}, Lcom/miui/permcenter/autostart/a$d;->b(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
