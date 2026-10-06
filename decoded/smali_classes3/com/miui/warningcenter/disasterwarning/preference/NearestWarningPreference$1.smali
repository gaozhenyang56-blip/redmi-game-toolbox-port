.class Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;->this$0:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;->this$0:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->access$000(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;)Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference$1;->this$0:Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->access$000(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;)Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;->access$100(Lcom/miui/warningcenter/disasterwarning/preference/NearestWarningPreference;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    :cond_0
    return-void
.end method
