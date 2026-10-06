.class public Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetPhoneNumListener"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/NetworkAssistantActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPhoneNumberBySlotLoaded(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$GetPhoneNumListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->onPhoneNumberBySlotLoaded(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
