.class public Lmiuix/appcompat/view/menu/HyperMenuInflater;
.super Landroidx/appcompat/view/g;
.source "SourceFile"


# static fields
.field public static final DEBUG_TAG:Ljava/lang/String; = "HyperMenuInflater"

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private appendExtraDataToGroup(Landroid/util/AttributeSet;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lmiuix/appcompat/R$styleable;->HyperMenuItem:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/f1;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$styleable;->HyperMenuItem_hyperMenuGroupForeignKey:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/f1;->k(II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/f1;->w()V

    if-eq v0, v1, :cond_1

    invoke-interface {p2, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_0
    const-string p3, "miuix:hyperMenu:groupForeignKey"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private appendExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lmiuix/appcompat/R$styleable;->HyperMenuItem:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/f1;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$styleable;->HyperMenuItem_hyperMenuItemGroupId:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/f1;->k(II)I

    move-result v0

    sget v2, Lmiuix/appcompat/R$styleable;->HyperMenuItem_hyperMenuItemForeignKey:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/f1;->k(II)I

    move-result v2

    invoke-virtual {p1}, Landroidx/appcompat/widget/f1;->w()V

    invoke-interface {p2, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_0
    const-string p3, "miuix:hyperMenu:groupId"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_1
    if-eq v2, v1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_2
    const-string p3, "miuix:hyperMenu:itemForeignKey"

    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private parseHyperGroupMenu(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :cond_0
    const/4 v4, 0x2

    const-string v5, "menu"

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting menu, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, v7

    move v9, v8

    move v10, v9

    move v12, v10

    :goto_1
    if-nez v9, :cond_e

    if-eq v3, v6, :cond_d

    const-string v13, "item"

    const-string v14, "group"

    if-eq v3, v4, :cond_7

    const/4 v15, 0x3

    if-eq v3, v15, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v11, v7

    move v10, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v9, v6

    goto :goto_2

    :cond_7
    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-direct {v0, v1, v2, v12}, Lmiuix/appcompat/view/menu/HyperMenuInflater;->appendExtraDataToGroup(Landroid/util/AttributeSet;Landroid/view/Menu;I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-direct {v0, v1, v2, v12}, Lmiuix/appcompat/view/menu/HyperMenuInflater;->appendExtraDataToItem(Landroid/util/AttributeSet;Landroid/view/Menu;I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move v12, v8

    goto :goto_2

    :cond_b
    move-object v11, v3

    move v10, v6

    :cond_c
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "Error inflating menu XML"

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/g;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lmiuix/appcompat/view/menu/HyperMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lmiuix/appcompat/view/menu/HyperMenuInflater;->parseHyperGroupMenu(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p1
.end method
