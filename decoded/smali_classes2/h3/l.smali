.class public Lh3/l;
.super Lh3/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/l$a;
    }
.end annotation


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0085

    invoke-direct {p0, v0}, Lh3/f;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lh3/f;->i(Z)V

    return-void
.end method

.method static synthetic j(Lh3/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh3/l;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh3/l;->i:Ljava/lang/String;

    return-void
.end method
