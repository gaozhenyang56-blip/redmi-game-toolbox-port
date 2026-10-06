.class public Lh3/m;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/m$a;
    }
.end annotation


# instance fields
.field private i:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e008c

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh3/f;->i(Z)V

    return-void
.end method

.method static synthetic j(Lh3/m;)Landroid/text/SpannableString;
    .locals 0

    iget-object p0, p0, Lh3/m;->i:Landroid/text/SpannableString;

    return-object p0
.end method


# virtual methods
.method public k(Landroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lh3/m;->i:Landroid/text/SpannableString;

    return-void
.end method
