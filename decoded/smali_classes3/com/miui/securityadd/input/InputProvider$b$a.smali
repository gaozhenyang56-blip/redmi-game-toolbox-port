.class Lcom/miui/securityadd/input/InputProvider$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityadd/input/InputProvider$b;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityadd/input/InputProvider$b;


# direct methods
.method constructor <init>(Lcom/miui/securityadd/input/InputProvider$b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityadd/input/InputProvider$b$a;->b:Lcom/miui/securityadd/input/InputProvider$b;

    iput-object p2, p0, Lcom/miui/securityadd/input/InputProvider$b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityadd/input/InputProvider$b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Ldf/h;->s(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/securityadd/input/InputProvider;->b(Z)Z

    return-void
.end method
