.class public abstract Lcom/miui/maml/elements/ConfigElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "SourceFile"


# static fields
.field protected static final ATTR_DELAY:Ljava/lang/String; = "delay"

.field protected static final ATTR_EASE:Ljava/lang/String; = "ease"

.field protected static final ATTR_FROM_SPEED:Ljava/lang/String; = "fromSpeed"

.field protected static final ATTR_ON_BEGIN:Ljava/lang/String; = "onBegin"

.field protected static final ATTR_ON_COMPLETE:Ljava/lang/String; = "onComplete"

.field protected static final ATTR_ON_UPDATE:Ljava/lang/String; = "onUpdate"

.field protected static final ATTR_PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field protected mTempAnimConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/folme/ConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    return-void
.end method

.method private setupCallbacks(Ljava/util/Collection;Lm/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/elements/FunctionElement;",
            ">;",
            "Lm/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-virtual {p2}, Lm/b;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected abstract evaluateConfigValue()V
.end method

.method public getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Lmiuix/animation/base/AnimConfig;
    .locals 14

    invoke-virtual {p1}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ConfigElement;->evaluateConfigValue()V

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/miui/maml/folme/ConfigValue;

    iget-object v1, v11, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Lm/b;

    if-eqz v1, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v11, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Lm/b;

    invoke-virtual {v1}, Lm/b;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v1, v11, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    iget-object v3, v11, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-wide v4, v11, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    if-eqz v1, :cond_2

    new-array v6, v9, [F

    iget v1, v11, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    aput v1, v6, v10

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_2
    new-array v6, v10, [F

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Lm/b;

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Lm/b;)V

    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Lm/b;

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Lm/b;)V

    iget-object v1, v0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, v11, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Lm/b;

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Lm/b;)V

    goto :goto_0

    :cond_4
    new-array v0, v9, [Lmiuix/animation/listener/TransitionListener;

    aput-object p1, v0, v10

    invoke-virtual {v7, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-object v7
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
