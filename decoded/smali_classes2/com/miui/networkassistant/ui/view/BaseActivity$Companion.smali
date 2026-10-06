.class public final Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/view/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAliveBusinessActivitySet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$getAliveBusinessActivitySet$cp()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final getForeGroundBusinessActivitySet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$getForeGroundBusinessActivitySet$cp()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final isMixTabStyleForeGround()Z
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$isMixTabStyleForeGround$cp()Z

    move-result v0

    return v0
.end method

.method public final setAliveBusinessActivitySet(Ljava/util/HashSet;)V
    .locals 1
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$setAliveBusinessActivitySet$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setForeGroundBusinessActivitySet(Ljava/util/HashSet;)V
    .locals 1
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$setForeGroundBusinessActivitySet$cp(Ljava/util/HashSet;)V

    return-void
.end method

.method public final setMixTabStyleForeGround(Z)V
    .locals 0

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->access$setMixTabStyleForeGround$cp(Z)V

    return-void
.end method
