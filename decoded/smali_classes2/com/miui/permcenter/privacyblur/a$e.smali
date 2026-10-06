.class public Lcom/miui/permcenter/privacyblur/a$e;
.super Lcom/miui/permcenter/privacyblur/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacyblur/a$b;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0bf9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/a$e;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bfc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/a$e;->b:Landroid/widget/TextView;

    iput-boolean p2, p0, Lcom/miui/permcenter/privacyblur/a$e;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lfc/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/permcenter/privacyblur/a$b;->a(Lfc/a;)V

    iget-boolean p1, p0, Lcom/miui/permcenter/privacyblur/a$e;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$e;->a:Landroid/widget/ImageView;

    const v0, 0x7f080ee3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$e;->b:Landroid/widget/TextView;

    const v0, 0x7f12151f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
