.class public Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/provider/SecSettingsSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final c:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    invoke-direct {v0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;-><init>()V

    sput-object v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->c:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->a:Ljava/util/List;

    new-instance v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a$a;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a$a;-><init>(Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;)V

    iput-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static b()Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->c:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
