.class Lym/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lym/r;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lym/r;",
            "Ljava/util/List<",
            "Lym/k;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lym/r;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lym/r;",
            ")",
            "Ljava/util/List<",
            "Lym/k;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
