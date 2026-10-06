.class public interface abstract Lym/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lym/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lym/n$a;

    invoke-direct {v0}, Lym/n$a;-><init>()V

    sput-object v0, Lym/n;->a:Lym/n;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
