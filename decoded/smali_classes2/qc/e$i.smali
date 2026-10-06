.class final Lqc/e$i;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lqc/e$i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lqc/e$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc/e$i;

    invoke-direct {v0}, Lqc/e$i;-><init>()V

    sput-object v0, Lqc/e$i;->a:Lqc/e$i;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lqc/e$i$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lqc/e$i$a;

    invoke-direct {v0}, Lqc/e$i$a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqc/e$i;->a()Lqc/e$i$a;

    move-result-object v0

    return-object v0
.end method
