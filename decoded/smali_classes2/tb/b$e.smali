.class public Ltb/b$e;
.super Ltb/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/permcenter/detection/model/b;",
        ">",
        "Ltb/b$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltb/b$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltb/b$b;-><init>(Landroid/view/View;Ltb/b$d;)V

    const p2, 0x7f0b0506

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Ltb/b$e;->d:Landroid/widget/ImageView;

    const p2, 0x7f0b0bc9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltb/b$e;->e:Landroid/widget/TextView;

    const p2, 0x7f0b0b21

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltb/b$e;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/detection/model/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Ltb/b$b;->a(Lcom/miui/permcenter/detection/model/b;)V

    instance-of v0, p1, Lcom/miui/permcenter/detection/model/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/detection/model/c;

    iget-object v0, p1, Lcom/miui/permcenter/detection/model/c;->c:Ljava/lang/String;

    iget-object v1, p0, Ltb/b$e;->d:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->h:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v0, p0, Ltb/b$e;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/permcenter/detection/model/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltb/b$e;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/permcenter/detection/model/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltb/b$b;->b:Landroid/widget/Button;

    iget-object p1, p1, Lcom/miui/permcenter/detection/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
