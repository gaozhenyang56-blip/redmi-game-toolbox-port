.class public Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Z

.field f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a:I

    iput-object p2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->b:Ljava/lang/String;

    return-object v0
.end method
