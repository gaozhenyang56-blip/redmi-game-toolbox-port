.class final Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/GameBoxToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Ljava/util/ArrayDeque<",
        "Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;

    invoke-direct {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;->a:Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayDeque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;->a()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method
