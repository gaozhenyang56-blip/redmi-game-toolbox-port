.class public Lh3/k;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/k$a;
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e007b

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh3/f;->i(Z)V

    return-void
.end method

.method static synthetic j(Lh3/k;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lh3/k;->j:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh3/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lh3/k;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/k;->i:Ljava/lang/String;

    return-void
.end method
