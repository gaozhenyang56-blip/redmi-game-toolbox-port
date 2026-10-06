.class Lm2/d$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lm2/d$e;

.field final synthetic d:Lm2/d;


# direct methods
.method public constructor <init>(Lm2/d;Ljava/lang/String;Landroid/util/Pair;Lm2/d$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lm2/d$e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lm2/d$g;->d:Lm2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm2/d$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lm2/d$g;->b:Landroid/util/Pair;

    iput-object p4, p0, Lm2/d$g;->c:Lm2/d$e;

    return-void
.end method
