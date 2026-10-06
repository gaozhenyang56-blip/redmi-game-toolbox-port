.class public Lpe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lnb/d;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lnb/d;
    .locals 1

    iget-object v0, p0, Lpe/d;->b:Lnb/d;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpe/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpe/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpe/d;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Lnb/d;)V
    .locals 0

    iput-object p1, p0, Lpe/d;->b:Lnb/d;

    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpe/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpe/d;->c:Ljava/util/ArrayList;

    return-void
.end method
