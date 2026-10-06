.class public abstract Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/provider/SecSettingsSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Lb0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->b:Lb0/i;

    invoke-interface {p1}, Lb0/i;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lb0/i;)Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb0/i<",
            "TT;>;)",
            "Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b$a;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b$a;-><init>(Lb0/i;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SEPARATE_APP_SEARCH_RESULT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.search.provider.UpdateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->b:Lb0/i;

    invoke-interface {v1}, Lb0/i;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->b:Lb0/i;

    invoke-interface {v0}, Lb0/i;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->a:Ljava/lang/Object;

    return-void
.end method
