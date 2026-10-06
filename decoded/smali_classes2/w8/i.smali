.class public Lw8/i;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Lw8/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw8/j;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lw8/i;->a:Lw8/j;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lw8/i;->a:Lw8/j;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lw8/i;->a()V

    return-void
.end method
