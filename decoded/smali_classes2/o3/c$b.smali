.class Lo3/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/c;->r(Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo3/c;


# direct methods
.method constructor <init>(Lo3/c;)V
    .locals 0

    iput-object p1, p0, Lo3/c$b;->a:Lo3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "train_configuration"

    invoke-static {p2, p1}, Lp3/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
