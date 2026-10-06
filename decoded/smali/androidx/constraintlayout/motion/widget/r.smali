.class public Landroidx/constraintlayout/motion/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/r$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/motion/widget/p;

.field b:Landroidx/constraintlayout/widget/l;

.field c:Landroidx/constraintlayout/motion/widget/r$b;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/constraintlayout/motion/widget/r$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/r$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/util/SparseIntArray;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/view/MotionEvent;

.field private o:Z

.field private p:Z

.field private q:Landroidx/constraintlayout/motion/widget/p$f;

.field private r:Z

.field final s:Landroidx/constraintlayout/motion/widget/v;

.field t:F

.field u:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/p;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r;->d:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->f:Landroidx/constraintlayout/motion/widget/r$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->i:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r;->k:Z

    const/16 v0, 0x190

    iput v0, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/r;->m:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r;->o:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/r;->p:Z

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    new-instance v0, Landroidx/constraintlayout/motion/widget/v;

    invoke-direct {v0, p2}, Landroidx/constraintlayout/motion/widget/v;-><init>(Landroidx/constraintlayout/motion/widget/p;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->s:Landroidx/constraintlayout/motion/widget/v;

    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/r;->G(Landroid/content/Context;I)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/i;->a:I

    new-instance p3, Landroidx/constraintlayout/widget/e;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/e;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->i:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private E(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_0
    if-lez v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-gez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private F()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G(Landroid/content/Context;I)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/r;->k:Z

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "MotionScene"

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string v3, "include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_1
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    goto :goto_2

    :sswitch_4
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_5
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :sswitch_6
    const-string v3, "ViewTransition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_7
    const-string v3, "Include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_8
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_9
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v7

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/u;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/u;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->s:Landroidx/constraintlayout/motion/widget/v;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/v;->a(Landroidx/constraintlayout/motion/widget/u;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v2, Landroidx/constraintlayout/motion/widget/g;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v1, :cond_8

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->f(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/r;->J(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/r;->H(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    goto/16 :goto_4

    :pswitch_4
    new-instance v2, Landroidx/constraintlayout/widget/l;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/widget/l;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    goto/16 :goto_4

    :pswitch_5
    if-eqz v1, :cond_8

    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/r$b;->s(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_6
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_8

    new-instance v2, Landroidx/constraintlayout/motion/widget/s;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-direct {v2, p1, v3, v0}, Landroidx/constraintlayout/motion/widget/s;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/p;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/r$b;->l(Landroidx/constraintlayout/motion/widget/r$b;Landroidx/constraintlayout/motion/widget/s;)Landroidx/constraintlayout/motion/widget/s;

    goto :goto_4

    :pswitch_7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-direct {v2, p0, p1, v0}, Landroidx/constraintlayout/motion/widget/r$b;-><init>(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-nez v1, :cond_4

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->e(Landroidx/constraintlayout/motion/widget/r$b;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v1

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/s;->x(Z)V

    :cond_4
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->e(Landroidx/constraintlayout/motion/widget/r$b;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v1

    if-ne v1, v7, :cond_5

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->f:Landroidx/constraintlayout/motion/widget/r$b;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object v1, v2

    goto :goto_4

    :pswitch_8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/r;->K(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_8
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_9
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private H(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 13

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/e;->O(Z)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_9

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/constraintlayout/motion/widget/r;->k:Z

    if-eqz v10, :cond_0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id string = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move v8, v3

    goto :goto_2

    :sswitch_0
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v11

    goto :goto_2

    :sswitch_1
    const-string v10, "constraintRotate"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v7

    goto :goto_2

    :sswitch_2
    const-string v10, "deriveConstraintsFrom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/r;->p(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/r;->i:Ljava/util/HashMap;

    invoke-static {v9}, Landroidx/constraintlayout/motion/widget/r;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v5}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/widget/e;->b:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_1
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/e;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x4

    const/4 v12, 0x3

    sparse-switch v8, :sswitch_data_1

    :goto_3
    move v8, v3

    goto :goto_4

    :sswitch_3
    const-string v8, "x_right"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    move v8, v10

    goto :goto_4

    :sswitch_4
    const-string v8, "right"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v12

    goto :goto_4

    :sswitch_5
    const-string v8, "none"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    move v8, v11

    goto :goto_4

    :sswitch_6
    const-string v8, "left"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_4

    :sswitch_7
    const-string v8, "x_left"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move v8, v1

    :goto_4
    packed-switch v8, :pswitch_data_1

    goto :goto_5

    :pswitch_2
    iput v12, v0, Landroidx/constraintlayout/widget/e;->d:I

    goto :goto_5

    :pswitch_3
    iput v7, v0, Landroidx/constraintlayout/widget/e;->d:I

    goto :goto_5

    :pswitch_4
    iput v1, v0, Landroidx/constraintlayout/widget/e;->d:I

    goto :goto_5

    :pswitch_5
    iput v11, v0, Landroidx/constraintlayout/widget/e;->d:I

    goto :goto_5

    :pswitch_6
    iput v10, v0, Landroidx/constraintlayout/widget/e;->d:I

    goto :goto_5

    :pswitch_7
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/r;->p(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    if-eq v5, v3, :cond_c

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/p;->w:I

    if-eqz v1, :cond_a

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/e;->S(Z)V

    :cond_a
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/e;->B(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v6, v3, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59328327 -> :sswitch_2
        -0x44bbba68 -> :sswitch_1
        0xd1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_7
        0x32a007 -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x747feb95 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private I(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "ConstraintSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/r;->H(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private J(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/j;->Ra:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/j;->Sa:I

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/r;->I(Landroid/content/Context;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private K(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/j;->X8:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Landroidx/constraintlayout/widget/j;->Y8:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iput v3, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    goto :goto_1

    :cond_0
    sget v3, Landroidx/constraintlayout/widget/j;->Z8:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/r;->m:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private O(ILandroidx/constraintlayout/motion/widget/p;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/e;

    iget-object v1, v0, Landroidx/constraintlayout/widget/e;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/r;->O(ILandroidx/constraintlayout/motion/widget/p;)V

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/e;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/e;->J(Landroidx/constraintlayout/widget/e;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  layout"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/e;->I(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_0
    invoke-virtual {v0, v0}, Landroidx/constraintlayout/widget/e;->h(Landroidx/constraintlayout/widget/e;)V

    return-void
.end method

.method public static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/r;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r;->m:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/r;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/r;Landroid/content/Context;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/r;->I(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/r;)Landroidx/constraintlayout/motion/widget/p;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    return-object p0
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/r;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    return p0
.end method

.method private p(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->k:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id getMap res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p1
.end method

.method private v(I)I
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/l;->c(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method A()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->o()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method B()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    return v0
.end method

.method public C(I)Landroidx/constraintlayout/motion/widget/r$b;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->m(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public D(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/r$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/r;->v(I)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne v3, p1, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method L(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/s;->u(FF)V

    :cond_0
    return-void
.end method

.method M(FF)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/s;->v(FF)V

    :cond_0
    return-void
.end method

.method N(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/p;)V
    .locals 11

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/p;->w()Landroidx/constraintlayout/motion/widget/p$f;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/motion/widget/p$f;->b(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/r;->o:Z

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/r;->u:F

    sub-float/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Landroidx/constraintlayout/motion/widget/r;->t:F

    sub-float/2addr v6, v7

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    float-to-double v7, v4

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    if-nez v7, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p2, v6, v4, v7}, Landroidx/constraintlayout/motion/widget/r;->h(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/r$b;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p3, v4}, Landroidx/constraintlayout/motion/widget/p;->setTransition(Landroidx/constraintlayout/motion/widget/r$b;)V

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v4, v6, v0}, Landroidx/constraintlayout/motion/widget/s;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v3

    :cond_6
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/r;->p:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/r;->t:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/r;->u:F

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/widget/s;->y(FF)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/r;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/r;->u:F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/r;->o:Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/s;->f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_8

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r;->o:Z

    return-void

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/s;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/r;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_9

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/r;->p:Z

    goto :goto_0

    :cond_9
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/r;->p:Z

    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget p2, p0, Landroidx/constraintlayout/motion/widget/r;->t:F

    iget p3, p0, Landroidx/constraintlayout/motion/widget/r;->u:F

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/s;->w(FF)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->o:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->p:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    invoke-virtual {v0, p1, v4, p2, p0}, Landroidx/constraintlayout/motion/widget/s;->s(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/p$f;ILandroidx/constraintlayout/motion/widget/r;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/r;->t:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/r;->u:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_e

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroidx/constraintlayout/motion/widget/p$f;->a()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->q:Landroidx/constraintlayout/motion/widget/p$f;

    iget p1, p3, Landroidx/constraintlayout/motion/widget/p;->f:I

    if-eq p1, v2, :cond_e

    invoke-virtual {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/r;->g(Landroidx/constraintlayout/motion/widget/p;I)Z

    :cond_e
    return-void
.end method

.method P(Landroidx/constraintlayout/motion/widget/p;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/r;->E(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "MotionScene"

    const-string v0, "Cannot be derived from yourself"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/r;->O(ILandroidx/constraintlayout/motion/widget/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Q(ILandroidx/constraintlayout/widget/e;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public R(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/r$b;->C(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    :goto_0
    return-void
.end method

.method public S(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/s;->x(Z)V

    :cond_0
    return-void
.end method

.method T(II)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/l;->c(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/l;->c(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne v3, p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v5

    if-ne v5, v2, :cond_5

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v5

    if-eq v5, v0, :cond_6

    :cond_5
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v5

    if-ne v5, p2, :cond_4

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_6
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v4, :cond_7

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/s;->x(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->f:Landroidx/constraintlayout/motion/widget/r$b;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v5

    if-ne v5, p2, :cond_9

    move-object p1, v4

    goto :goto_2

    :cond_a
    new-instance p2, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/r$b;-><init>(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r$b;)V

    invoke-static {p2, v0}, Landroidx/constraintlayout/motion/widget/r$b;->d(Landroidx/constraintlayout/motion/widget/r$b;I)I

    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/r$b;->b(Landroidx/constraintlayout/motion/widget/r$b;I)I

    if-eq v0, v1, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    return-void
.end method

.method public U(Landroidx/constraintlayout/motion/widget/r$b;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/s;->x(Z)V

    :cond_0
    return-void
.end method

.method V()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->z()V

    :cond_0
    return-void
.end method

.method X()Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public varargs Y(I[Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->s:Landroidx/constraintlayout/motion/widget/v;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/v;->h(I[Landroid/view/View;)V

    return-void
.end method

.method public f(Landroidx/constraintlayout/motion/widget/p;I)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/r$b$a;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/r$b$a;->c(Landroidx/constraintlayout/motion/widget/p;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/r$b$a;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/r$b$a;->c(Landroidx/constraintlayout/motion/widget/p;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/r$b$a;

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/r$b$a;->a(Landroidx/constraintlayout/motion/widget/p;ILandroidx/constraintlayout/motion/widget/r$b;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->n(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/r$b$a;

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/r$b$a;->a(Landroidx/constraintlayout/motion/widget/p;ILandroidx/constraintlayout/motion/widget/r$b;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method g(Landroidx/constraintlayout/motion/widget/p;I)Z
    .locals 7

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/r;->F()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->d:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/r$b;->B(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->c(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    const/4 v5, 0x1

    if-ne p2, v3, :cond_7

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne v3, v4, :cond_7

    :cond_5
    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/p;->setTransition(Landroidx/constraintlayout/motion/widget/r$b;)V

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->D()V

    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    goto :goto_1

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/p;->l(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->x()V

    :goto_1
    return v5

    :cond_7
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne p2, v3, :cond_2

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_8
    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->d:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/p;->setTransition(Landroidx/constraintlayout/motion/widget/r$b;)V

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/r$b;->p(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->F()V

    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    sget-object p2, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setProgress(F)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/p;->l(Z)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/p$j;->b:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/p$j;->c:Landroidx/constraintlayout/motion/widget/p$j;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/p;->setState(Landroidx/constraintlayout/motion/widget/p$j;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/p;->x()V

    :goto_2
    return v5

    :cond_a
    return v1
.end method

.method public h(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/r$b;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/r;->D(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->o(Landroidx/constraintlayout/motion/widget/r$b;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v9

    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/r;->r:Z

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/motion/widget/s;->x(Z)V

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v9, v10, v7}, Landroidx/constraintlayout/motion/widget/s;->p(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v9, v10, v7}, Landroidx/constraintlayout/motion/widget/s;->f(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Landroidx/constraintlayout/motion/widget/s;->a(FF)F

    move-result v9

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v10

    iget-boolean v10, v10, Landroidx/constraintlayout/motion/widget/s;->l:Z

    if-eqz v10, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v10

    iget v10, v10, Landroidx/constraintlayout/motion/widget/s;->i:F

    sub-float/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v11

    iget v11, v11, Landroidx/constraintlayout/motion/widget/s;->j:F

    sub-float/2addr v10, v11

    add-float v11, v2, v9

    add-float v12, v3, v10

    float-to-double v12, v12

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    float-to-double v13, v9

    float-to-double v9, v10

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v11, v9

    double-to-float v9, v11

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    :cond_4
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v10

    if-ne v10, v1, :cond_5

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    const v10, 0x3f8ccccd    # 1.1f

    :goto_1
    mul-float/2addr v9, v10

    cmpl-float v10, v9, v5

    if-lez v10, :cond_0

    move-object v6, v8

    move v5, v9

    goto/16 :goto_0

    :cond_6
    return-object v6

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    return-object v1
.end method

.method i()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->d()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j(I)Landroidx/constraintlayout/widget/e;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/r;->k(III)Landroidx/constraintlayout/widget/e;

    move-result-object p1

    return-object p1
.end method

.method k(III)Landroidx/constraintlayout/widget/e;
    .locals 3

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/r;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->b:Landroidx/constraintlayout/widget/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/l;->c(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    move p1, p2

    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Warning could not find ConstraintSet id/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/constraintlayout/motion/widget/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/e;

    return-object p1

    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public l()[I
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/r;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/r$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->j(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/r;->l:I

    return v0
.end method

.method o()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->a(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    return v0
.end method

.method public q()Landroid/view/animation/Interpolator;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->g(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :cond_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->h(Landroidx/constraintlayout/motion/widget/r$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/c;->c(Ljava/lang/String;)Lo/c;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/motion/widget/r$a;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/r$a;-><init>(Landroidx/constraintlayout/motion/widget/r;Lo/c;)V

    return-object v1

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->a:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/r$b;->i(Landroidx/constraintlayout/motion/widget/r$b;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method r()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->g()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method s()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->h()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method t()Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method u(FF)F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/s;->j(FF)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method w()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method x()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->l()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method y()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->m()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method z()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/r;->c:Landroidx/constraintlayout/motion/widget/r$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/r$b;->k(Landroidx/constraintlayout/motion/widget/r$b;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/s;->n()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
