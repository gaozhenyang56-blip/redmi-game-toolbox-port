.class Lcom/miui/securitycenter/WidgetProvider$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/WidgetProvider$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/WidgetProvider$a;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/WidgetProvider$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/WidgetProvider$a$a;->a:Lcom/miui/securitycenter/WidgetProvider$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Leg/g;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/WidgetProvider$a$a;->a:Lcom/miui/securitycenter/WidgetProvider$a;

    iget-object v1, v1, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    invoke-static {v1, v0}, Lcom/miui/securitycenter/WidgetProvider;->a(Lcom/miui/securitycenter/WidgetProvider;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/securitycenter/WidgetProvider$a$a;->a:Lcom/miui/securitycenter/WidgetProvider$a;

    iget-object v0, v0, Lcom/miui/securitycenter/WidgetProvider$a;->a:Lcom/miui/securitycenter/WidgetProvider;

    const-string v1, "clean_memory"

    invoke-static {v0, v1}, Lcom/miui/securitycenter/WidgetProvider;->b(Lcom/miui/securitycenter/WidgetProvider;Ljava/lang/String;)V

    return-void
.end method
