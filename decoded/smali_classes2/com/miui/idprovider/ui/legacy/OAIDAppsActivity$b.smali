.class Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/permcenter/model/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/AppOpsManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->a:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->b:Landroid/app/AppOpsManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/model/a;Lcom/miui/permcenter/model/a;)I
    .locals 7

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->c()I

    move-result v2

    const/16 v3, 0x2735

    invoke-static {v0, v1, v2, v3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->c()I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/permcenter/model/a;

    check-cast p2, Lcom/miui/permcenter/model/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;->a(Lcom/miui/permcenter/model/a;Lcom/miui/permcenter/model/a;)I

    move-result p1

    return p1
.end method
