.class Lcom/miui/maml/ActionCommand$JsonObjectCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonObjectCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "JsonObjectCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

.field private mNameExp:Lcom/miui/maml/data/Expression;

.field private mValueExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "command"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "nameExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "valueExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "putJsonArray"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "putBoolean"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "putString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "putJsonObject"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "remove"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "putInt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_ARRAY:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_BOOLEAN:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_STRING:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    :goto_1
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mCommand:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_2

    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_JSON_OBJECT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :pswitch_5
    sget-object p1, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->PUT_INT:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    goto :goto_1

    :goto_2
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a3aa1a0 -> :sswitch_5
        -0x37b5077c -> :sswitch_4
        -0x20ed894a -> :sswitch_3
        -0x1b98c800 -> :sswitch_2
        0x1c849219 -> :sswitch_1
        0x50c6d402 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mCommand:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    sget-object v2, Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;->REMOVE:Lcom/miui/maml/ActionCommand$JsonObjectCommand$CommandType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_a

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    sget-object v2, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$JsonObjectCommand$CommandType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mValueExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$JsonObjectCommand;->mNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    :try_start_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_3
    return-void
.end method
