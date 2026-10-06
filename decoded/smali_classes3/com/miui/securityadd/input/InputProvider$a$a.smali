.class Lcom/miui/securityadd/input/InputProvider$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityadd/input/InputProvider$a;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityadd/input/InputProvider$a;


# direct methods
.method constructor <init>(Lcom/miui/securityadd/input/InputProvider$a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityadd/input/InputProvider$a$a;->b:Lcom/miui/securityadd/input/InputProvider$a;

    iput-object p2, p0, Lcom/miui/securityadd/input/InputProvider$a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityadd/input/InputProvider$a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Ldf/h;->P(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/securityadd/input/InputProvider;->a(Z)Z

    return-void
.end method
