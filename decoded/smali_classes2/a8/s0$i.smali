.class final La8/s0$i;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/s0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:La8/s0$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/s0$i;

    invoke-direct {v0}, La8/s0$i;-><init>()V

    sput-object v0, La8/s0$i;->a:La8/s0$i;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La8/s0$i;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
