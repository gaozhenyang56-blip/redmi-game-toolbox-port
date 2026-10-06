.class public Lcom/miui/permcenter/autostart/a$e;
.super Lcom/miui/permcenter/autostart/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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

    const v0, 0x7f0b08a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a$e;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lob/a;)V
    .locals 1

    instance-of p1, p1, Lob/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/autostart/a$e;->a:Landroid/widget/TextView;

    const v0, 0x7f1202db

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
