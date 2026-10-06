.class public interface abstract Lym/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lym/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lym/l$a;

    invoke-direct {v0}, Lym/l$a;-><init>()V

    sput-object v0, Lym/l;->a:Lym/l;

    return-void
.end method


# virtual methods
.method public abstract a(Lym/r;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lym/r;",
            "Ljava/util/List<",
            "Lym/k;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lym/r;)Ljava/util/List;
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
.end method
