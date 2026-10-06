.class Lo3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/c;->j()V
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

    iput-object p1, p0, Lo3/c$a;->a:Lo3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lp3/n;->m(Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lp3/n;->l(Lorg/json/JSONObject;)V

    :cond_1
    iget-object p1, p0, Lo3/c$a;->a:Lo3/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo3/c;->b(Lo3/c;Z)Z

    iget-object p1, p0, Lo3/c$a;->a:Lo3/c;

    invoke-virtual {p1}, Lo3/c;->l()V

    return-void
.end method
