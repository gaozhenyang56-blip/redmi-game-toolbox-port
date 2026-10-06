.class public Lh3/e$a;
.super Lh3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lh3/g;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0b8e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh3/e$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lh3/f;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lh3/g;->a(Landroid/view/View;Lh3/f;I)V

    check-cast p2, Lh3/e;

    new-instance p1, Lh3/e$a$a;

    invoke-direct {p1, p0, p2}, Lh3/e$a$a;-><init>(Lh3/e$a;Lh3/e;)V

    iget-object p2, p0, Lh3/e$a;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1}, Lgb/b;->u()V

    return-void
.end method
