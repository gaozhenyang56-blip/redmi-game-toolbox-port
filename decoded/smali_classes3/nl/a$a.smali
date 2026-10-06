.class public Lnl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lnl/a;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnl/a;

    invoke-direct {v0, p1}, Lnl/a;-><init>(F)V

    iput-object v0, p0, Lnl/a$a;->a:Lnl/a;

    return-void
.end method


# virtual methods
.method public a()Lnl/a;
    .locals 1

    iget-object v0, p0, Lnl/a$a;->a:Lnl/a;

    return-object v0
.end method

.method public b(I)Lnl/a$a;
    .locals 1

    iget-object v0, p0, Lnl/a$a;->a:Lnl/a;

    int-to-float p1, p1

    iput p1, v0, Lnl/a;->f:F

    return-object p0
.end method
