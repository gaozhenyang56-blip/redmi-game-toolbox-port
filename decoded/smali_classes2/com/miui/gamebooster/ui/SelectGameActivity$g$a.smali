.class Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameActivity$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/miui/gamebooster/ui/SelectGameActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$g$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method
